.class public Le/a/c/c/d/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;->b0(Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/s;

.field public final synthetic b:Le/a/c/c/d/m0;

.field public final synthetic c:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;Le/a/c/c/d/s;Le/a/c/c/d/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$a;->c:Le/a/c/c/d/e0;

    iput-object p2, p0, Le/a/c/c/d/e0$a;->a:Le/a/c/c/d/s;

    iput-object p3, p0, Le/a/c/c/d/e0$a;->b:Le/a/c/c/d/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0$a;->c:Le/a/c/c/d/e0;

    iget-object v1, p0, Le/a/c/c/d/e0$a;->a:Le/a/c/c/d/s;

    iget-object v2, p0, Le/a/c/c/d/e0$a;->b:Le/a/c/c/d/m0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Le/a/c/c/d/d0;->c0(Le/a/c/c/d/d0;Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
