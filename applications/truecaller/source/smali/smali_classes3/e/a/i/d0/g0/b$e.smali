.class public final Le/a/i/d0/g0/b$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/g0/b;-><init>(Lo3/a;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/b3/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/d0/g0/b$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/d0/g0/b$e;

    invoke-direct {v0}, Le/a/i/d0/g0/b$e;-><init>()V

    sput-object v0, Le/a/i/d0/g0/b$e;->b:Le/a/i/d0/g0/b$e;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v0

    return-object v0
.end method
