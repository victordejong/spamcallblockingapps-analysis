.class public final Le/a/b0/q/j$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/q/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/j/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b0/q/j$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b0/q/j$h;

    invoke-direct {v0}, Le/a/b0/q/j$h;-><init>()V

    sput-object v0, Le/a/b0/q/j$h;->b:Le/a/b0/q/j$h;

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
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    const-string v1, "ApplicationBase.getAppBase()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->q1()Le/a/b0/j/b;

    move-result-object v0

    return-object v0
.end method
