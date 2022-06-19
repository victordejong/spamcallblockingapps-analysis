.class public final synthetic Le/m/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/b;


# instance fields
.field public final synthetic a:Le/m/d/g;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Le/m/d/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/a;->a:Le/m/d/g;

    iput-object p2, p0, Le/m/d/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/d/a;->a:Le/m/d/g;

    iget-object v1, p0, Le/m/d/a;->b:Landroid/content/Context;

    .line 1
    new-instance v2, Le/m/d/x/a;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Le/m/d/g;->d:Le/m/d/m/t;

    const-class v4, Le/m/d/s/c;

    .line 3
    invoke-virtual {v0, v4}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/s/c;

    invoke-direct {v2, v1, v3, v0}, Le/m/d/x/a;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/d/s/c;)V

    return-object v2
.end method
