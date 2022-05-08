package com.aotter.net.trek.model;

import android.text.TextUtils;
import androidx.core.app.Person;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.aotter.net.gson.annotations.SerializedName;
import gogolook.callgogolook2.gson.CallAction;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalk.class */
public class CatWalk {
    @SerializedName("action")
    public String action;
    @SerializedName("browser")
    public BrowserBean browser;
    @SerializedName(Person.KEY_KEY)
    public String key;
    @SerializedName("url_popup")
    public String urlPopup;
    @SerializedName(MimeTypes.BASE_TYPE_VIDEO)
    public VideoBean video;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalk$BrowserBean.class */
    public class BrowserBean {
        @SerializedName("inapp_android")
        public boolean inappAndroid;
        @SerializedName("inapp_ios")
        public boolean inappIos;
        @SerializedName("url")
        public String url;

        public String getUrl() {
            return this.url;
        }

        public boolean isInappAndroid() {
            return this.inappAndroid;
        }

        public boolean isInappIos() {
            return this.inappIos;
        }

        public void setInappAndroid(boolean z) {
            this.inappAndroid = z;
        }

        public void setInappIos(boolean z) {
            this.inappIos = z;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalk$CatWalkAction.class */
    public enum CatWalkAction {
        POPUP("POPUP"),
        CAPTURE("CAPTURE"),
        CLOSE(CallAction.ACTION_CLOSE),
        BROWSER("BROWSER"),
        VIDEO("VIDEO"),
        TOUCH_START("TOUCH_START"),
        GAME_LOAD_COMPLETE("GAME_LOAD_COMPLETE"),
        CLICK("CLICK"),
        UNKNOWN("UNKNOWN");
        
        public String val;

        CatWalkAction(String str) {
            this.val = str;
        }

        public static CatWalkAction fromString(String str) {
            CatWalkAction[] values;
            if (TextUtils.isEmpty(str)) {
                return UNKNOWN;
            }
            for (CatWalkAction catWalkAction : values()) {
                if (str.contains(catWalkAction.val())) {
                    return catWalkAction;
                }
            }
            return UNKNOWN;
        }

        public String val() {
            return this.val;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalk$VideoBean.class */
    public class VideoBean {
        @SerializedName("end")
        public int end;
        @SerializedName("isFullScreen")
        public boolean isFullScreen;
        @SerializedName("isMute")
        public boolean isMute;
        @SerializedName("playerHeight")
        public int playerHeight;
        @SerializedName("playerWidth")
        public int playerWidth;
        @SerializedName("start")
        public int start;

        public int getEnd() {
            return this.end;
        }

        public int getPlayerHeight() {
            return this.playerHeight;
        }

        public int getPlayerWidth() {
            return this.playerWidth;
        }

        public int getStart() {
            return this.start;
        }

        public boolean isIsFullScreen() {
            return this.isFullScreen;
        }

        public boolean isIsMute() {
            return this.isMute;
        }

        public void setEnd(int i) {
            this.end = i;
        }

        public void setIsFullScreen(boolean z) {
            this.isFullScreen = z;
        }

        public void setIsMute(boolean z) {
            this.isMute = z;
        }

        public void setPlayerHeight(int i) {
            this.playerHeight = i;
        }

        public void setPlayerWidth(int i) {
            this.playerWidth = i;
        }

        public void setStart(int i) {
            this.start = i;
        }
    }

    public String getAction() {
        return this.action;
    }

    public BrowserBean getBrowser() {
        return this.browser;
    }

    public String getKey() {
        return this.key;
    }

    public String getUrlPopup() {
        return this.urlPopup;
    }

    public VideoBean getVideo() {
        return this.video;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setBrowser(BrowserBean browserBean) {
        this.browser = browserBean;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setUrlPopup(String str) {
        this.urlPopup = str;
    }

    public void setVideo(VideoBean videoBean) {
        this.video = videoBean;
    }
}
