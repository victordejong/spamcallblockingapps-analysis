.class public final Le/m/a/h/a/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/g/t0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/g/k;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/o;->a:Le/m/a/h/a/g/k;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/g/o;->a:Le/m/a/h/a/g/k;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/g/k;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Le/m/a/h/a/g/t0;->d(Landroid/content/Context;)Le/m/a/h/a/g/t0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
