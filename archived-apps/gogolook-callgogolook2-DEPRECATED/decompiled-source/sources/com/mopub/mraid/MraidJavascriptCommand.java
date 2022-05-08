package com.mopub.mraid;

import androidx.annotation.NonNull;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.gson.CallAction;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidJavascriptCommand.class */
public class MraidJavascriptCommand extends Enum<MraidJavascriptCommand> {
    @NonNull

    /* renamed from: a */
    public final String f8949a;
    public static final MraidJavascriptCommand CLOSE = new MraidJavascriptCommand(CallAction.ACTION_CLOSE, 0, MraidParser.MRAID_COMMAND_CLOSE);
    public static final MraidJavascriptCommand EXPAND = new C3916a("EXPAND", 1, MraidParser.MRAID_COMMAND_EXPAND);
    public static final MraidJavascriptCommand USE_CUSTOM_CLOSE = new MraidJavascriptCommand("USE_CUSTOM_CLOSE", 2, "usecustomclose");
    public static final MraidJavascriptCommand OPEN = new MraidJavascriptCommand("OPEN", 3, MraidParser.MRAID_COMMAND_OPEN) { // from class: com.mopub.mraid.MraidJavascriptCommand.b
        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return true;
        }
    };
    public static final MraidJavascriptCommand RESIZE = new MraidJavascriptCommand("RESIZE", 4, MraidParser.MRAID_COMMAND_RESIZE) { // from class: com.mopub.mraid.MraidJavascriptCommand.c
        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return true;
        }
    };
    public static final MraidJavascriptCommand SET_ORIENTATION_PROPERTIES = new MraidJavascriptCommand("SET_ORIENTATION_PROPERTIES", 5, MraidParser.MRAID_COMMAND_SET_ORIENTATION_PROPERTIES);
    public static final MraidJavascriptCommand PLAY_VIDEO = new MraidJavascriptCommand("PLAY_VIDEO", 6, MraidParser.MRAID_COMMAND_PLAY_VIDEO) { // from class: com.mopub.mraid.MraidJavascriptCommand.d
        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    };
    public static final MraidJavascriptCommand STORE_PICTURE = new MraidJavascriptCommand("STORE_PICTURE", 7, MraidParser.MRAID_COMMAND_STORE_PICTURE) { // from class: com.mopub.mraid.MraidJavascriptCommand.e
        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return true;
        }
    };
    public static final MraidJavascriptCommand CREATE_CALENDAR_EVENT = new MraidJavascriptCommand("CREATE_CALENDAR_EVENT", 8, MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT) { // from class: com.mopub.mraid.MraidJavascriptCommand.f
        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return true;
        }
    };
    public static final MraidJavascriptCommand UNSPECIFIED = new MraidJavascriptCommand("UNSPECIFIED", 9, "");

    /* renamed from: b */
    public static final /* synthetic */ MraidJavascriptCommand[] f8948b = {CLOSE, EXPAND, USE_CUSTOM_CLOSE, OPEN, RESIZE, SET_ORIENTATION_PROPERTIES, PLAY_VIDEO, STORE_PICTURE, CREATE_CALENDAR_EVENT, UNSPECIFIED};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.mopub.mraid.MraidJavascriptCommand$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidJavascriptCommand$a.class */
    public static final class C3916a extends MraidJavascriptCommand {
        public C3916a(String str, int i, String str2) {
            super(str, i, str2, null);
        }

        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: a */
        public boolean mo30250a(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    }

    public MraidJavascriptCommand(@NonNull String str, int i, String str2) {
        this.f8949a = str2;
    }

    public /* synthetic */ MraidJavascriptCommand(String str, int i, String str2, C3916a aVar) {
        this(str, i, str2);
    }

    /* renamed from: a */
    public static MraidJavascriptCommand m30251a(@NonNull String str) {
        MraidJavascriptCommand[] values;
        for (MraidJavascriptCommand mraidJavascriptCommand : values()) {
            if (mraidJavascriptCommand.f8949a.equals(str)) {
                return mraidJavascriptCommand;
            }
        }
        return UNSPECIFIED;
    }

    public static MraidJavascriptCommand valueOf(String str) {
        return (MraidJavascriptCommand) Enum.valueOf(MraidJavascriptCommand.class, str);
    }

    public static MraidJavascriptCommand[] values() {
        return (MraidJavascriptCommand[]) f8948b.clone();
    }

    /* renamed from: a */
    public String m30252a() {
        return this.f8949a;
    }

    /* renamed from: a */
    public boolean mo30250a(@NonNull PlacementType placementType) {
        return false;
    }
}
