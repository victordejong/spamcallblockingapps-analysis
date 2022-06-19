.class public final Le/a/b0/a/x/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/f/a/r/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b0/a/x/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b0/a/x/d;

    invoke-direct {v0}, Le/a/b0/a/x/d;-><init>()V

    sput-object v0, Le/a/b0/a/x/d;->b:Le/a/b0/a/x/d;

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
    .locals 2

    .line 1
    new-instance v0, Le/f/a/r/h;

    invoke-direct {v0}, Le/f/a/r/h;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    .line 3
    sget-object v1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-virtual {v0, v1}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    return-object v0
.end method
