.class public final Le/m/a/h/a/a/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/a/j3;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/j3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/o3;->a:Le/m/a/h/a/a/j3;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/o3;->a:Le/m/a/h/a/a/j3;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/j3;->a:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/o3;->a:Le/m/a/h/a/a/j3;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/j3;->a:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
