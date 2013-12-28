// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.webkit.WebView;
import android.widget.VideoView;
import com.google.ads.AdActivity;
import com.google.ads.util.a;
import java.util.HashMap;

public final class v
    implements i
{

    public v()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("action");
        if (webview instanceof g)
        {
            AdActivity adactivity = ((g)webview).b();
            if (adactivity == null)
            {
                com.google.ads.util.a.a("Could not get adActivity to create the video.");
            } else
            {
                if (s.equals("load"))
                {
                    String s2 = (String)hashmap.get("url");
                    android.app.Activity activity = d1.e();
                    if (activity == null)
                    {
                        com.google.ads.util.a.e("activity was null while loading a video.");
                        return;
                    } else
                    {
                        VideoView videoview1 = new VideoView(activity);
                        videoview1.setVideoPath(s2);
                        adactivity.showVideo(videoview1);
                        return;
                    }
                }
                VideoView videoview = adactivity.getVideoView();
                if (videoview == null)
                {
                    com.google.ads.util.a.e("Could not get the VideoView for a video GMSG.");
                    return;
                }
                if (s.equals("play"))
                {
                    videoview.setVisibility(0);
                    videoview.start();
                    com.google.ads.util.a.d("Video is now playing.");
                    webview.loadUrl("javascript:AFMA_ReceiveMessage('onVideoEvent', {'event': 'playing'});");
                    return;
                }
                if (s.equals("pause"))
                {
                    videoview.pause();
                    return;
                }
                if (s.equals("stop"))
                {
                    videoview.stopPlayback();
                    return;
                }
                if (s.equals("remove"))
                {
                    videoview.setVisibility(8);
                    return;
                }
                if (s.equals("replay"))
                {
                    videoview.setVisibility(0);
                    videoview.seekTo(0);
                    videoview.start();
                    return;
                }
                if (s.equals("currentTime"))
                {
                    String s1 = (String)hashmap.get("time");
                    if (s1 == null)
                    {
                        com.google.ads.util.a.e("No \"time\" parameter!");
                        return;
                    } else
                    {
                        videoview.seekTo((int)(1000F * Float.valueOf(s1).floatValue()));
                        return;
                    }
                }
                if (!s.equals("position"))
                {
                    com.google.ads.util.a.e((new StringBuilder()).append("Unknown movie action: ").append(s).toString());
                    return;
                }
            }
            return;
        } else
        {
            com.google.ads.util.a.a("Could not get adWebView to create the video.");
            return;
        }
    }
}
