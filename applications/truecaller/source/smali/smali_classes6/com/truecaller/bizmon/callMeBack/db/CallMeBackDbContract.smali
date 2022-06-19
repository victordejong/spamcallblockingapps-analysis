.class public final Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;",
        "",
        "",
        "DB_NAME",
        "Ljava/lang/String;",
        "",
        "DB_VERSION",
        "I",
        "<init>",
        "()V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "bizmon_call_me_back"

.field public static final DB_VERSION:I = 0x1

.field public static final INSTANCE:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;

    invoke-direct {v0}, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;-><init>()V

    sput-object v0, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;->INSTANCE:Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDbContract;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
