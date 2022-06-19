.class final Lcom/hiya/client/callerid/dao/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/dao/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/hiya/client/callerid/dao/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/h;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/h;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/dao/h$a;->a:Lcom/hiya/client/callerid/dao/h;

    return-void
.end method

.method static synthetic a()Lcom/hiya/client/callerid/dao/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/dao/h$a;->a:Lcom/hiya/client/callerid/dao/h;

    return-object v0
.end method
