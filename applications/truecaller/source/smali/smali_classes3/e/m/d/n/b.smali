.class public final synthetic Le/m/d/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/h/a;


# instance fields
.field public final synthetic a:Le/m/d/n/e;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/b;->a:Le/m/d/n/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le/m/d/n/b;->a:Le/m/d/n/e;

    .line 1
    iget-object v0, v0, Le/m/d/n/e;->b:Le/m/d/n/j/h/a;

    invoke-interface {v0, p1, p2}, Le/m/d/n/j/h/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
