.class public final Ln3/v/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/v/i;


# direct methods
.method public constructor <init>(Ln3/v/i;)V
    .locals 0

    iput-object p1, p0, Ln3/v/i$a;->a:Ln3/v/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/i$a;->a:Ln3/v/i;

    iget-object v0, v0, Ln3/v/i;->f:Ln3/v/i0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
