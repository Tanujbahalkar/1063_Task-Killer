// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLDecoder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.ads.util:
//            a, b

public final class AdUtil
{
    public static class UserActivityReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT"))
            {
                AdUtil.a(true);
            } else
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
            {
                AdUtil.a(false);
                return;
            }
        }

        public UserActivityReceiver()
        {
        }
    }

    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        private static final a g[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/google/ads/util/AdUtil$a, s);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        static 
        {
            a = new a("INVALID", 0);
            b = new a("SPEAKER", 1);
            c = new a("HEADPHONES", 2);
            d = new a("VIBRATE", 3);
            e = new a("EMULATOR", 4);
            f = new a("OTHER", 5);
            a aa[] = new a[6];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            g = aa;
        }

        private a(String s, int j)
        {
            super(s, j);
        }
    }


    private static Boolean a = null;
    private static String b = null;
    private static String c;
    private static AudioManager d;
    private static DisplayMetrics e;
    private static boolean f = true;
    private static boolean g = false;
    private static String h = null;

    private AdUtil()
    {
    }

    public static DisplayMetrics a(Activity activity)
    {
        if (e == null)
        {
            e = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(e);
        }
        return e;
    }

    public static String a(Context context)
    {
        if (b == null)
        {
            String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            String s1;
            if (s == null || a())
            {
                s1 = a("emulator");
            } else
            {
                s1 = a(s);
            }
            if (s1 == null)
            {
                return null;
            }
            b = s1.toUpperCase();
        }
        return b;
    }

    public static String a(Location location)
    {
        if (location == null)
        {
            return null;
        } else
        {
            Object aobj[] = new Object[4];
            aobj[0] = Long.valueOf(1000L * location.getTime());
            aobj[1] = Long.valueOf((long)(10000000D * location.getLatitude()));
            aobj[2] = Long.valueOf((long)(10000000D * location.getLongitude()));
            aobj[3] = Long.valueOf((long)(1000F * location.getAccuracy()));
            String s = b(String.format("role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", aobj));
            return (new StringBuilder()).append("e1+").append(s).toString();
        }
    }

    public static String a(String s)
    {
        String s1 = null;
        if (s != null)
        {
            int j = s.length();
            s1 = null;
            if (j > 0)
            {
                String s2;
                try
                {
                    MessageDigest messagedigest = MessageDigest.getInstance("MD5");
                    messagedigest.update(s.getBytes(), 0, s.length());
                    Object aobj[] = new Object[1];
                    aobj[0] = new BigInteger(1, messagedigest.digest());
                    s2 = String.format("%032X", aobj);
                }
                catch (NoSuchAlgorithmException nosuchalgorithmexception)
                {
                    return s.substring(0, 32);
                }
                s1 = s2;
            }
        }
        return s1;
    }

    public static String a(Map map)
    {
        String s;
        try
        {
            s = b(map).toString();
        }
        catch (JSONException jsonexception)
        {
            com.google.ads.util.a.c("JsonException in serialization: ", jsonexception);
            return null;
        }
        return s;
    }

    private static JSONArray a(Set set)
        throws JSONException
    {
        JSONArray jsonarray = new JSONArray();
        if (set != null && !set.isEmpty())
        {
            Iterator iterator = set.iterator();
            while (iterator.hasNext()) 
            {
                Object obj = iterator.next();
                if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
                {
                    jsonarray.put(obj);
                } else
                if (obj instanceof Map)
                {
                    try
                    {
                        jsonarray.put(b((Map)obj));
                    }
                    catch (ClassCastException classcastexception1)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception1);
                    }
                } else
                if (obj instanceof Set)
                {
                    try
                    {
                        jsonarray.put(a((Set)obj));
                    }
                    catch (ClassCastException classcastexception)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception);
                    }
                } else
                {
                    com.google.ads.util.a.e((new StringBuilder()).append("Unknown value in json serialization: ").append(obj.toString()).append(" : ").append(obj.getClass().getCanonicalName().toString()).toString());
                }
            }
        }
        return jsonarray;
    }

    public static void a(WebView webview)
    {
        String s = i(webview.getContext().getApplicationContext());
        webview.getSettings().setUserAgentString(s);
    }

    public static void a(HttpURLConnection httpurlconnection, Context context)
    {
        httpurlconnection.setRequestProperty("User-Agent", i(context));
    }

    public static void a(boolean flag)
    {
        f = flag;
    }

    public static boolean a()
    {
        return "unknown".equals(Build.BOARD) && "generic".equals(Build.DEVICE) && "generic".equals(Build.BRAND);
    }

    public static boolean a(Uri uri)
    {
        String s = uri.getScheme();
        return "http".equalsIgnoreCase(s) || "https".equalsIgnoreCase(s);
    }

    private static String b(String s)
    {
        String s1;
        try
        {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(new byte[] {
                10, 55, -112, -47, -6, 7, 11, 75, -7, -121, 
                121, 69, 80, -61, 15, 5
            }, "AES"));
            byte abyte0[] = cipher.getIV();
            byte abyte1[] = cipher.doFinal(s.getBytes());
            byte abyte2[] = new byte[abyte0.length + abyte1.length];
            System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
            System.arraycopy(abyte1, 0, abyte2, abyte0.length, abyte1.length);
            s1 = com.google.ads.util.b.a(abyte2);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            return null;
        }
        return s1;
    }

    public static HashMap b(Uri uri)
    {
        if (uri != null) goto _L2; else goto _L1
_L1:
        HashMap hashmap = null;
_L4:
        return hashmap;
_L2:
        hashmap = new HashMap();
        String s = uri.getEncodedQuery();
        if (s != null)
        {
            String as[] = s.split("&");
            int j = as.length;
            int k = 0;
            while (k < j) 
            {
                String s1 = as[k];
                int l = s1.indexOf('=');
                if (l == -1)
                {
                    return null;
                }
                String s2 = s1.substring(0, l);
                String s3 = s1.substring(l + 1);
                hashmap.put(URLDecoder.decode(s2), URLDecoder.decode(s3));
                k++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static JSONObject b(Map map)
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        if (map == null || map.isEmpty())
        {
            return jsonobject;
        }
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = map.get(s);
            if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
            {
                jsonobject.put(s, obj);
            } else
            if (obj instanceof Map)
            {
                try
                {
                    jsonobject.put(s, b((Map)obj));
                }
                catch (ClassCastException classcastexception1)
                {
                    com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception1);
                }
            } else
            if (obj instanceof Set)
            {
                try
                {
                    jsonobject.put(s, a((Set)obj));
                }
                catch (ClassCastException classcastexception)
                {
                    com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception);
                }
            } else
            {
                com.google.ads.util.a.e((new StringBuilder()).append("Unknown value in json serialization: ").append(obj.toString()).append(" : ").append(obj.getClass().getCanonicalName().toString()).toString());
            }
        }

        return jsonobject;
    }

    public static boolean b()
    {
        return f;
    }

    public static boolean b(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        String s = context.getPackageName();
        if (packagemanager.checkPermission("android.permission.INTERNET", s) == -1)
        {
            com.google.ads.util.a.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        if (packagemanager.checkPermission("android.permission.ACCESS_NETWORK_STATE", s) == -1)
        {
            com.google.ads.util.a.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        } else
        {
            return true;
        }
    }

    public static boolean c(Context context)
    {
        if (a != null)
        {
            return a.booleanValue();
        }
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(new Intent(context, com/google/ads/AdActivity), 0x10000);
        boolean flag = true;
        boolean flag1;
        if (resolveinfo == null || resolveinfo.activityInfo == null)
        {
            com.google.ads.util.a.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
            flag1 = false;
        } else
        {
            if ((0x10 & resolveinfo.activityInfo.configChanges) == 0)
            {
                com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboard.");
                flag = false;
            }
            if ((0x20 & resolveinfo.activityInfo.configChanges) == 0)
            {
                com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboardHidden.");
                flag = false;
            }
            if ((0x80 & resolveinfo.activityInfo.configChanges) == 0)
            {
                com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include orientation.");
                flag1 = false;
            } else
            {
                flag1 = flag;
            }
        }
        a = Boolean.valueOf(flag1);
        return flag1;
    }

    public static String d(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return null;
        }
        switch (networkinfo.getType())
        {
        default:
            return "unknown";

        case 0: // '\0'
            return "ed";

        case 1: // '\001'
            return "wi";
        }
    }

    public static String e(Context context)
    {
        if (c == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            PackageManager packagemanager = context.getPackageManager();
            List list = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 0x10000);
            if (list == null || list.size() == 0)
            {
                stringbuilder.append("m");
            }
            List list1 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 0x10000);
            if (list1 == null || list1.size() == 0)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("a");
            }
            List list2 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 0x10000);
            if (list2 == null || list2.size() == 0)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("t");
            }
            c = stringbuilder.toString();
        }
        return c;
    }

    public static a f(Context context)
    {
        if (d == null)
        {
            d = (AudioManager)context.getSystemService("audio");
        }
        a _tmp = a.f;
        int j = d.getMode();
        if (a())
        {
            return a.e;
        }
        if (d.isMusicActive() || d.isSpeakerphoneOn() || j == 2 || j == 1)
        {
            return a.d;
        }
        int k = d.getRingerMode();
        if (k == 0 || k == 1)
        {
            return a.d;
        } else
        {
            return a.b;
        }
    }

    public static String g(Context context)
    {
        String s = "p";
        if (((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation() == 1)
        {
            s = "l";
        }
        return s;
    }

    public static void h(Context context)
    {
        if (g)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(new UserActivityReceiver(), intentfilter);
            g = true;
            return;
        }
    }

    private static String i(Context context)
    {
        if (h == null)
        {
            String s = (new WebView(context)).getSettings().getUserAgentString();
            if (s == null || s.length() == 0 || s.equals("Java0"))
            {
                String s1 = System.getProperty("os.name", "Linux");
                String s2 = (new StringBuilder()).append("Android ").append(android.os.Build.VERSION.RELEASE).toString();
                Locale locale = Locale.getDefault();
                String s3 = locale.getLanguage().toLowerCase();
                if (s3.length() == 0)
                {
                    s3 = "en";
                }
                String s4 = locale.getCountry().toLowerCase();
                String s5;
                String s6;
                if (s4.length() > 0)
                {
                    s5 = (new StringBuilder()).append(s3).append("-").append(s4).toString();
                } else
                {
                    s5 = s3;
                }
                s6 = (new StringBuilder()).append(Build.MODEL).append(" Build/").append(Build.ID).toString();
                s = (new StringBuilder()).append("Mozilla/5.0 (").append(s1).append("; U; ").append(s2).append("; ").append(s5).append("; ").append(s6).append(") AppleWebKit/0.0 (KHTML, like ").append("Gecko) Version/0.0 Mobile Safari/0.0").toString();
            }
            h = (new StringBuilder()).append(s).append(" (Mobile; ").append("afma-sdk-a-v").append("4.1.0").append(")").toString();
        }
        return h;
    }

}
