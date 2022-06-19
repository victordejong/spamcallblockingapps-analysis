.class public final Le/a/d/c0/x1/f$d$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/c0/x1/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/w2/x;

.field public final synthetic c:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lq3/a/w2/x;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$d$d;->b:Lq3/a/w2/x;

    iput-object p2, p0, Le/a/d/c0/x1/f$d$d;->c:Ls1/z/c/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/d/c0/x1/b;

    const-string v0, "audioState"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d/c0/x1/f$d$d;->c:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/x1/b;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new audio state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object v0, p0, Le/a/d/c0/x1/f$d$d;->b:Lq3/a/w2/x;

    invoke-static {v0, p1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Le/a/d/c0/x1/f$d$d;->c:Ls1/z/c/c0;

    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
