.class public final Ln3/v/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/o;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/w2/j;


# direct methods
.method public constructor <init>(Lq3/a/w2/j;)V
    .locals 0

    iput-object p1, p0, Ln3/v/o$c;->a:Lq3/a/w2/j;

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
    iget-object v0, p0, Ln3/v/o$c;->a:Lq3/a/w2/j;

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method
