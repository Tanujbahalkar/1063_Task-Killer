// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class com.google.ads.util.b
{
    public static abstract class a
    {

        public byte a[];
        public int b;

        public a()
        {
        }
    }

    public static final class b extends a
    {

        static final boolean g;
        private static final byte h[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 43, 47
        };
        private static final byte i[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 45, 95
        };
        public int c;
        public final boolean d = false;
        public final boolean e = false;
        public final boolean f = false;
        private final byte j[] = new byte[2];
        private int k;
        private final byte l[];

        public final boolean a(byte abyte0[], int i1)
        {
            byte abyte1[];
            byte abyte2[];
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            abyte1 = l;
            abyte2 = a;
            j1 = k;
            k1 = i1 + 0;
            l1 = -1;
            i2 = c;
            j2 = 0;
            i2;
            JVM INSTR tableswitch 0 2: default 64
        //                       0 374
        //                       1 384
        //                       2 462;
               goto _L1 _L2 _L3 _L4
_L1:
            int l2;
            int i3;
            byte byte0 = l1;
            l2 = j2;
            i3 = byte0;
_L9:
            int j3 = 0;
            if (i3 == -1) goto _L6; else goto _L5
_L5:
            int k12 = 0 + 1;
            abyte2[0] = abyte1[0x3f & i3 >> 18];
            int l12 = k12 + 1;
            abyte2[1] = abyte1[0x3f & i3 >> 12];
            int i13 = l12 + 1;
            abyte2[2] = abyte1[0x3f & i3 >> 6];
            j3 = i13 + 1;
            abyte2[3] = abyte1[i3 & 0x3f];
            if (--j1 != 0) goto _L6; else goto _L7
_L7:
            int k3;
            int l3;
            if (f)
            {
                j3++;
                abyte2[4] = 13;
            }
            int j13 = j3 + 1;
            abyte2[j3] = 10;
            k3 = j13;
            j1 = 19;
              goto _L8
_L2:
            i3 = l1;
            l2 = 0;
              goto _L9
_L3:
            j2 = 0;
            if (2 > k1) goto _L1; else goto _L10
_L10:
            int k13 = (0xff & j[0]) << 16;
            int l13 = 0 + 1;
            int i14 = k13 | (0xff & abyte0[0]) << 8;
            int j14 = l13 + 1;
            int k14 = i14 | 0xff & abyte0[1];
            c = 0;
            l2 = j14;
            i3 = k14;
              goto _L9
_L4:
            j2 = 0;
            if (k1 > 0)
            {
                int k2 = (0xff & j[0]) << 16 | (0xff & j[1]) << 8;
                j2 = 0 + 1;
                l1 = k2 | 0xff & abyte0[0];
                c = 0;
            }
              goto _L1
_L8:
            for (l3 = l2; l3 + 3 <= k1;)
            {
                int i12 = (0xff & abyte0[l3]) << 16 | (0xff & abyte0[l3 + 1]) << 8 | 0xff & abyte0[l3 + 2];
                abyte2[k3] = abyte1[0x3f & i12 >> 18];
                abyte2[k3 + 1] = abyte1[0x3f & i12 >> 12];
                abyte2[k3 + 2] = abyte1[0x3f & i12 >> 6];
                abyte2[k3 + 3] = abyte1[i12 & 0x3f];
                l3 += 3;
                k3 += 4;
                if (--j1 == 0)
                {
                    int i4;
                    int j4;
                    int k4;
                    int l4;
                    byte byte1;
                    int i5;
                    int j5;
                    int k5;
                    int l5;
                    byte byte2;
                    int i6;
                    int j6;
                    int k6;
                    int l6;
                    int i7;
                    int j7;
                    int k7;
                    int l7;
                    int i8;
                    byte abyte3[];
                    int j8;
                    byte byte3;
                    int k8;
                    byte abyte4[];
                    int l8;
                    byte byte4;
                    int i9;
                    byte byte5;
                    int j9;
                    int k9;
                    int l9;
                    int i10;
                    int j10;
                    int k10;
                    int l10;
                    int i11;
                    int j11;
                    int k11;
                    byte abyte5[];
                    int l11;
                    byte byte6;
                    int j12;
                    if (f)
                    {
                        j12 = k3 + 1;
                        abyte2[k3] = 13;
                    } else
                    {
                        j12 = k3;
                    }
                    k3 = j12 + 1;
                    abyte2[j12] = 10;
                    j1 = 19;
                }
            }

            if (l3 - c == k1 - 1)
            {
                if (c > 0)
                {
                    abyte5 = j;
                    l11 = 0 + 1;
                    byte6 = abyte5[0];
                    k9 = l11;
                    j9 = l3;
                    byte5 = byte6;
                } else
                {
                    i9 = l3 + 1;
                    byte5 = abyte0[l3];
                    j9 = i9;
                    k9 = 0;
                }
                l9 = (byte5 & 0xff) << 4;
                c = c - k9;
                i10 = k3 + 1;
                abyte2[k3] = abyte1[0x3f & l9 >> 6];
                j10 = i10 + 1;
                abyte2[i10] = abyte1[l9 & 0x3f];
                if (d)
                {
                    j11 = j10 + 1;
                    abyte2[j10] = 61;
                    k11 = j11 + 1;
                    abyte2[j11] = 61;
                    k10 = k11;
                } else
                {
                    k10 = j10;
                }
                if (e)
                {
                    if (f)
                    {
                        i11 = k10 + 1;
                        abyte2[k10] = 13;
                        k10 = i11;
                    }
                    l10 = k10 + 1;
                    abyte2[k10] = 10;
                    k10 = l10;
                }
                j4 = k10;
                i4 = j9;
            } else
            if (l3 - c == k1 - 2)
            {
                if (c > 1)
                {
                    abyte4 = j;
                    l8 = 0 + 1;
                    byte4 = abyte4[0];
                    j5 = l8;
                    i5 = l3;
                    byte1 = byte4;
                } else
                {
                    l4 = l3 + 1;
                    byte1 = abyte0[l3];
                    i5 = l4;
                    j5 = 0;
                }
                k5 = (byte1 & 0xff) << 10;
                if (c > 0)
                {
                    abyte3 = j;
                    j8 = j5 + 1;
                    byte3 = abyte3[j5];
                    i6 = j8;
                    k8 = i5;
                    byte2 = byte3;
                    j6 = k8;
                } else
                {
                    l5 = i5 + 1;
                    byte2 = abyte0[i5];
                    i6 = j5;
                    j6 = l5;
                }
                k6 = k5 | (byte2 & 0xff) << 2;
                c = c - i6;
                l6 = k3 + 1;
                abyte2[k3] = abyte1[0x3f & k6 >> 12];
                i7 = l6 + 1;
                abyte2[l6] = abyte1[0x3f & k6 >> 6];
                j7 = i7 + 1;
                abyte2[i7] = abyte1[k6 & 0x3f];
                if (d)
                {
                    k7 = j7 + 1;
                    abyte2[j7] = 61;
                } else
                {
                    k7 = j7;
                }
                if (e)
                {
                    if (f)
                    {
                        i8 = k7 + 1;
                        abyte2[k7] = 13;
                        k7 = i8;
                    }
                    l7 = k7 + 1;
                    abyte2[k7] = 10;
                    k7 = l7;
                }
                j4 = k7;
                i4 = j6;
            } else
            {
                if (e && k3 > 0 && j1 != 19)
                {
                    if (f)
                    {
                        k4 = k3 + 1;
                        abyte2[k3] = 13;
                    } else
                    {
                        k4 = k3;
                    }
                    k3 = k4 + 1;
                    abyte2[k4] = 10;
                }
                i4 = l3;
                j4 = k3;
            }
            if (!g && c != 0)
            {
                throw new AssertionError();
            }
            if (!g && i4 != k1)
            {
                throw new AssertionError();
            } else
            {
                b = j4;
                k = j1;
                return true;
            }
_L6:
            k3 = j3;
            l3 = l2;
            if (true) goto _L8; else goto _L11
_L11:
              goto _L9
        }

        static 
        {
            boolean flag;
            if (!com/google/ads/util/b.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            g = flag;
        }

        public b()
        {
            a = null;
            l = i;
            c = 0;
            int i1;
            if (e)
            {
                i1 = 19;
            } else
            {
                i1 = -1;
            }
            k = i1;
        }
    }


    static final boolean a;

    private com.google.ads.util.b()
    {
    }

    public static String a(byte abyte0[])
    {
        int i;
        b b1;
        int j;
        i = abyte0.length;
        b1 = new b();
        j = 4 * (i / 3);
        if (!b1.d) goto _L2; else goto _L1
_L1:
        if (i % 3 > 0)
        {
            j += 4;
        }
_L7:
        if (!b1.e || i <= 0)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        int k;
        k = 1 + (i - 1) / 57;
        break MISSING_BLOCK_LABEL_55;
_L5:
        try
        {
            b1.a = new byte[j];
            b1.a(abyte0, i);
            if (!a && b1.b != j)
            {
                throw new AssertionError();
            }
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
          goto _L3
_L2:
        String s;
        switch (i % 3)
        {
        case 0: // '\0'
        default:
            if (false)
            {
            }
            break;

        case 1: // '\001'
            j += 2;
            break;

        case 2: // '\002'
            j += 3;
            break;
        }
        break; /* Loop/switch isn't completed */
_L3:
        s = new String(b1.a, "US-ASCII");
        return s;
        byte byte0;
        if (b1.f)
        {
            byte0 = 2;
        } else
        {
            byte0 = 1;
        }
        j += k * byte0;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
    }

    static 
    {
        boolean flag;
        if (!com/google/ads/util/b.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
