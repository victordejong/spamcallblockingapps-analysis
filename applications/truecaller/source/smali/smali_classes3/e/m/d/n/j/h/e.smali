.class public Le/m/d/n/j/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/h/a;


# instance fields
.field public final a:Le/m/d/k/a/a;


# direct methods
.method public constructor <init>(Le/m/d/k/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/h/e;->a:Le/m/d/k/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/h/e;->a:Le/m/d/k/a/a;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Le/m/d/k/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
