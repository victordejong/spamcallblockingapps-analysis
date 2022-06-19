.class public final Le/a/a/c/d7;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/c/d7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c/d7;

    invoke-direct {v0}, Le/a/a/c/d7;-><init>()V

    sput-object v0, Le/a/a/c/d7;->b:Le/a/a/c/d7;

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
    .locals 1

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
