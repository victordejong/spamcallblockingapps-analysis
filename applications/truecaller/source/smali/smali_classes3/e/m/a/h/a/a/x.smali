.class public final Le/m/a/h/a/a/x;
.super Le/m/a/h/a/d/w1;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/m/a/h/a/a/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/a/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/w1;-><init>()V

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/m/a/h/a/a/x;->a:Le/m/a/h/a/d/g;

    iput-object p1, p0, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    iput-object p2, p0, Le/m/a/h/a/a/x;->c:Le/m/a/h/a/a/e0;

    return-void
.end method
