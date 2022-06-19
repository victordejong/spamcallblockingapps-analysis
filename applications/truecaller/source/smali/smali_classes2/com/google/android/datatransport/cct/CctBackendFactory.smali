.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/y/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Le/m/a/b/j/y/h;)Le/m/a/b/j/y/m;
    .locals 3

    .line 1
    new-instance v0, Le/m/a/b/i/d;

    .line 2
    invoke-virtual {p1}, Le/m/a/b/j/y/h;->a()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Le/m/a/b/j/y/h;->d()Le/m/a/b/j/e0/a;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Le/m/a/b/j/y/h;->c()Le/m/a/b/j/e0/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Le/m/a/b/i/d;-><init>(Landroid/content/Context;Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;)V

    return-object v0
.end method
