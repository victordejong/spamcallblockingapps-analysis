.class public final synthetic Le/a/a/c/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# static fields
.field public static final synthetic a:Le/a/a/c/s1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c/s1;

    invoke-direct {v0}, Le/a/a/c/s1;-><init>()V

    sput-object v0, Le/a/a/c/s1;->a:Le/a/a/c/s1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/view/ViewGroup;

    .line 1
    sget v0, Le/a/a/c/y3;->t1:I

    .line 2
    new-instance v0, Le/a/a/c/o6;

    const v1, 0x7f0d0278

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/a/c/o6;-><init>(Landroid/view/View;)V

    return-object v0
.end method
