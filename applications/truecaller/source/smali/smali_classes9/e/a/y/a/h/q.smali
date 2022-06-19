.class public final Le/a/y/a/h/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/a/h/o;


# direct methods
.method public constructor <init>(Le/a/y/a/h/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/h/q;->a:Le/a/y/a/h/o;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/h/q;->a:Le/a/y/a/h/o;

    .line 2
    iget-object v0, v0, Le/a/y/a/h/o;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
