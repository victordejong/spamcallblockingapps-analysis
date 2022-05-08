package zendesk.core;

import android.support.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsPermissions.class */
class BlipsPermissions {
    private boolean behavioural;
    private boolean pathfinder;
    private boolean required;

    /* renamed from: zendesk.core.BlipsPermissions$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsPermissions$1.class */
    static /* synthetic */ class C26541 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$core$BlipsGroup = new int[BlipsGroup.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.BEHAVIOURAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.PATHFINDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlipsPermissions() {
        this(false, false, false);
    }

    @VisibleForTesting
    BlipsPermissions(boolean z, boolean z2, boolean z3) {
        this.required = z;
        this.behavioural = z2;
        this.pathfinder = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled(BlipsGroup blipsGroup) {
        switch (C26541.$SwitchMap$zendesk$core$BlipsGroup[blipsGroup.ordinal()]) {
            case 1:
                return this.required;
            case 2:
                return this.behavioural;
            case 3:
                return this.pathfinder;
            default:
                return false;
        }
    }
}
