package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Objects;
/* renamed from: e.a.c.a.m.c.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/q.class */
public final class View$OnLongClickListenerC9340q implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9336o f28383a;

    /* renamed from: b */
    public final /* synthetic */ TextView f28384b;

    public View$OnLongClickListenerC9340q(C9336o c9336o, TextView textView) {
        this.f28383a = c9336o;
        this.f28384b = textView;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        Object systemService = this.f28383a.requireContext().getSystemService("clipboard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("malanaSeedData", this.f28384b.getText()));
        Toast.makeText(this.f28383a.getContext(), "Copied to clipboard", 0).show();
        return true;
    }
}
