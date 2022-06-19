.class public final Ln3/z/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g;-><init>(Ln3/b0/a/h$e;Ln3/b0/a/q;Lq3/a/g0;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g;


# direct methods
.method public constructor <init>(Ln3/z/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/g$b;->a:Ln3/z/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/z/g$b;->a:Ln3/z/g;

    .line 2
    iget-object v0, v0, Ln3/z/g;->g:Ln3/b0/a/q;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, p2, v1}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInserted(II)V
    .locals 1

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/z/g$b;->a:Ln3/z/g;

    .line 2
    iget-object v0, v0, Ln3/z/g;->g:Ln3/b0/a/q;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onInserted(II)V

    :cond_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/z/g$b;->a:Ln3/z/g;

    .line 2
    iget-object v0, v0, Ln3/z/g;->g:Ln3/b0/a/q;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onRemoved(II)V

    :cond_0
    return-void
.end method
