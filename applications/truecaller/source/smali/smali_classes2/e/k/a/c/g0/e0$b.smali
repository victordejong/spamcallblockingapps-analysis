.class public Le/k/a/c/g0/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/k/a/c/m0/o;


# direct methods
.method public constructor <init>(Le/k/a/c/m0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/e0$b;->a:Le/k/a/c/m0/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;)Le/k/a/c/i;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e0$b;->a:Le/k/a/c/m0/o;

    .line 2
    sget-object v1, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method
