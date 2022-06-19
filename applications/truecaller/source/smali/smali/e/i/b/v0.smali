.class public final synthetic Le/i/b/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/v0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/i/b/v0;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/l2/a;

    invoke-virtual {v0}, Le/i/b/x2;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v0}, Le/i/b/l2/a;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method
