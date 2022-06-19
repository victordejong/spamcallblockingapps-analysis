.class public final Le/m/d/z/h/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/d/w/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/d/z/h/a/a;


# direct methods
.method public constructor <init>(Le/m/d/z/h/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/h/a/d;->a:Le/m/d/z/h/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/z/h/a/d;->a:Le/m/d/z/h/a/a;

    .line 2
    iget-object v0, v0, Le/m/d/z/h/a/a;->b:Le/m/d/w/i;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
