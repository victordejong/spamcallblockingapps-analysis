.class public final Le/a/r/d/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/d/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/r/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/d/d;


# direct methods
.method public constructor <init>(Le/a/r/d/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/d/d$b;->b:Le/a/r/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/r/d/b;

    new-instance v1, Le/a/r/d/e;

    invoke-direct {v1, p0}, Le/a/r/d/e;-><init>(Le/a/r/d/d$b;)V

    invoke-direct {v0, v1}, Le/a/r/d/b;-><init>(Ls1/z/b/l;)V

    return-object v0
.end method
