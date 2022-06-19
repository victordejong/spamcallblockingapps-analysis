.class public Ln3/v/w0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/w0;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/v/w0;


# direct methods
.method public constructor <init>(Ln3/v/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/w0$a;->a:Ln3/v/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/w0$a;->a:Ln3/v/w0;

    iget-object v0, v0, Ln3/v/w0;->c:Ln3/v/i0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
