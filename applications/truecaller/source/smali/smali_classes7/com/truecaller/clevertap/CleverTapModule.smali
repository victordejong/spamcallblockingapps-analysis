.class public interface abstract Lcom/truecaller/clevertap/CleverTapModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/clevertap/CleverTapModule$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008a\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000cJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0007H\'\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/clevertap/CleverTapModule;",
        "",
        "Le/a/g3/d;",
        "impl",
        "Lcom/truecaller/clevertap/CleverTapManager;",
        "bindCleverTapManager",
        "(Le/a/g3/d;)Lcom/truecaller/clevertap/CleverTapManager;",
        "Le/a/g3/c;",
        "Le/a/g3/b;",
        "bindCleverTapAPIWrapper",
        "(Le/a/g3/c;)Le/a/g3/b;",
        "Companion",
        "a",
        "clevertap_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/clevertap/CleverTapModule$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/truecaller/clevertap/CleverTapModule$a;->a:Lcom/truecaller/clevertap/CleverTapModule$a;

    sput-object v0, Lcom/truecaller/clevertap/CleverTapModule;->Companion:Lcom/truecaller/clevertap/CleverTapModule$a;

    return-void
.end method


# virtual methods
.method public abstract bindCleverTapAPIWrapper(Le/a/g3/c;)Le/a/g3/b;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract bindCleverTapManager(Le/a/g3/d;)Lcom/truecaller/clevertap/CleverTapManager;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
