.class public final synthetic Le/a/a/c/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/w1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/a/a/c/w1;->a:Le/a/a/c/y3;

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Le/a/a/c/o8/f;

    iget-object v0, v0, Le/a/a/c/y3;->V0:Le/a/o2/f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/a/c/o8/f;-><init>(Landroid/view/View;Le/a/o2/m;Z)V

    return-object v1
.end method
