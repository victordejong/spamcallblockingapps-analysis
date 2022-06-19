.class public final Le/a/b0/q/a0$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/q/a0;->h(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Le/m/f/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/q/a0;


# direct methods
.method public constructor <init>(Le/a/b0/q/a0;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/q/a0$d;->b:Le/a/b0/q/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/b0/q/a0$d;->b:Le/a/b0/q/a0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Le/a/b0/q/a0;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Le/a/b0/q/a0$a;->a:Le/m/f/a/o;

    :cond_0
    return-object v1
.end method
