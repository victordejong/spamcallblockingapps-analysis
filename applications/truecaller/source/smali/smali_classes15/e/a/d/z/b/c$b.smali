.class public final Le/a/d/z/b/c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/b/c;->Kj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/z/b/c;


# direct methods
.method public constructor <init>(Le/a/d/z/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/b/c$b;->b:Le/a/d/z/b/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Le/a/d/z/b/c$b;->b:Le/a/d/z/b/c;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/a/d/z/b/c;->d:Lq3/a/p1;

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
