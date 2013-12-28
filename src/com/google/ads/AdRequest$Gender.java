// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


// Referenced classes of package com.google.ads:
//            AdRequest

public static final class a extends Enum
{

    public static final b FEMALE;
    public static final b MALE;
    private static final b b[];
    private String a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/google/ads/AdRequest$Gender, s);
    }

    public static a[] values()
    {
        return (a[])b.clone();
    }

    public final String toString()
    {
        return a;
    }

    static 
    {
        MALE = new <init>("MALE", 0, "m");
        FEMALE = new <init>("FEMALE", 1, "f");
        a aa[] = new <init>[2];
        aa[0] = MALE;
        aa[1] = FEMALE;
        b = aa;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }
}
