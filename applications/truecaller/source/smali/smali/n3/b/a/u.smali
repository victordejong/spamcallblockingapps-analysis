.class public Ln3/b/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/a/u$a;
    }
.end annotation


# static fields
.field public static d:Ln3/b/a/u;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Ln3/b/a/u$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/b/a/u$a;

    invoke-direct {v0}, Ln3/b/a/u$a;-><init>()V

    iput-object v0, p0, Ln3/b/a/u;->c:Ln3/b/a/u$a;

    .line 3
    iput-object p1, p0, Ln3/b/a/u;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ln3/b/a/u;->b:Landroid/location/LocationManager;

    return-void
.end method
