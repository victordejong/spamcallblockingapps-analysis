package com.adbert.p009a.p012c;

import java.io.Serializable;
/* renamed from: com.adbert.a.c.b */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c/b.class */
public enum EnumC1382b implements Serializable {
    video,
    banner,
    cpm_video,
    cpm_banner,
    cpm_web,
    banner_web;

    /* renamed from: a */
    public EnumC1382b m37193a(String str) {
        if (str.equals(video.toString())) {
            return video;
        }
        if (str.equals(banner.toString())) {
            return banner;
        }
        if (str.equals(cpm_video.toString())) {
            return cpm_video;
        }
        if (str.equals(cpm_banner.toString())) {
            return cpm_banner;
        }
        return null;
    }
}
