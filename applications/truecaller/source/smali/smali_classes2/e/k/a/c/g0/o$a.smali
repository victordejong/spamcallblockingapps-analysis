.class public Le/k/a/c/g0/o$a;
.super Le/k/a/c/g0/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Le/k/a/c/g0/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/g0/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/g0/o$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/k/a/c/g0/o$a;->c:Le/k/a/c/g0/o$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/g0/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/g0/o$e;

    iget-object v1, p0, Le/k/a/c/g0/o;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Le/k/a/c/g0/o$e;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public b()Le/k/a/c/g0/p;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/g0/p;

    invoke-direct {v0}, Le/k/a/c/g0/p;-><init>()V

    return-object v0
.end method

.method public c()Le/k/a/c/n0/b;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/g0/o;->b:Le/k/a/c/n0/b;

    return-object v0
.end method

.method public d(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
