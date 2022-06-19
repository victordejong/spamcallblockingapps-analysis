.class public final Le/a/l/p2/j0$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/j0;-><init>(Le/a/l/s2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lx3/g0/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/l/p2/j0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/p2/j0$e;

    invoke-direct {v0}, Le/a/l/p2/j0$e;-><init>()V

    sput-object v0, Le/a/l/p2/j0$e;->b:Le/a/l/p2/j0$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    .line 2
    const-class v1, Lw3/b/a/b;

    new-instance v2, Le/a/l/p2/e;

    invoke-direct {v2}, Le/a/l/p2/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 3
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    .line 4
    new-instance v1, Lx3/g0/a/a;

    invoke-direct {v1, v0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    return-object v1
.end method
