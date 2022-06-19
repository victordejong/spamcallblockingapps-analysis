.class public Le/a/c/c/d/e0$k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;->d(Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/a/c/c/d/c;

.field public final synthetic c:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;Ljava/util/List;Le/a/c/c/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$k0;->c:Le/a/c/c/d/e0;

    iput-object p2, p0, Le/a/c/c/d/e0$k0;->a:Ljava/util/List;

    iput-object p3, p0, Le/a/c/c/d/e0$k0;->b:Le/a/c/c/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0$k0;->c:Le/a/c/c/d/e0;

    iget-object v1, p0, Le/a/c/c/d/e0$k0;->a:Ljava/util/List;

    iget-object v2, p0, Le/a/c/c/d/e0$k0;->b:Le/a/c/c/d/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Le/a/c/c/d/d0;->e(Le/a/c/c/d/d0;Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
