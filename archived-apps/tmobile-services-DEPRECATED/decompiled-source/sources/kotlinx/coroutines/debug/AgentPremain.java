package kotlinx.coroutines.debug;

import android.annotation.SuppressLint;
import java.lang.instrument.ClassFileTransformer;
import kotlin.Metadata;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\bÁ\u0002\u0018��:\u0001\u0012B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/debug/AgentPremain;", "", "installSignalHandler", "()V", "", "args", "Ljava/lang/instrument/Instrumentation;", "instrumentation", "premain", "(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V", "", "enableCreationStackTraces", "Z", "isInstalledStatically", "()Z", "setInstalledStatically", "(Z)V", "<init>", "DebugProbesTransformer", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@SuppressLint({"all"})
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/AgentPremain.class */
public final class AgentPremain {

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0006\bÀ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJA\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;", "Ljava/lang/ClassLoader;", "loader", "", "className", "Ljava/lang/Class;", "classBeingRedefined", "Ljava/security/ProtectionDomain;", "protectionDomain", "", "classfileBuffer", "transform", "(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer.class */
    public static final class DebugProbesTransformer implements ClassFileTransformer {
        private DebugProbesTransformer() {
        }
    }

    static {
        String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
        if (property != null) {
            Boolean.parseBoolean(property);
        } else {
            DebugProbesImpl.f22279d.m750d();
        }
    }

    private AgentPremain() {
    }
}
