.class public final Le/a/d/c0/x1/f$k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;->g()V
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
.field public final synthetic b:Le/a/d/c0/x1/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$k;->b:Le/a/d/c0/x1/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Le/a/d/c0/x1/f$k;->b:Le/a/d/c0/x1/f;

    .line 3
    iget-object p1, p1, Le/a/d/c0/x1/f;->g:Ls1/w/f;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
