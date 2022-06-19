.class public final Le/a/y/a/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/a/a/e/a;


# direct methods
.method public constructor <init>(Le/a/y/a/a/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/a/e/b;->a:Le/a/y/a/a/e/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/a/e/b;->a:Le/a/y/a/a/e/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/y/a/a/d;

    invoke-direct {v0}, Le/a/y/a/a/d;-><init>()V

    return-object v0
.end method
