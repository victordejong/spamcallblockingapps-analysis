.class public final Le/a/e3/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e3/h/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/r2/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/r2/n;

    invoke-direct {v0}, Le/a/r2/n;-><init>()V

    .line 2
    new-instance v1, Le/a/e3/h/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/e3/h/c;-><init>(Le/a/e3/h/a;)V

    .line 3
    new-instance v2, Le/a/e3/h/b;

    invoke-direct {v2, v1, v0}, Le/a/e3/h/b;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    const-string v0, "ActorsBuilder().build()"

    .line 4
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
