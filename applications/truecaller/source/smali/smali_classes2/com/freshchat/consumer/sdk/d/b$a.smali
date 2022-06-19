.class public Lcom/freshchat/consumer/sdk/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final clz:Ljava/lang/Class;

.field private final fieldName:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final nk:Ljava/lang/String;

.field private nl:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic nm:Lcom/freshchat/consumer/sdk/d/b;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b$a;->nm:Lcom/freshchat/consumer/sdk/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/d/b$a;->nk:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/d/b$a;->fieldName:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/d/b$a;->label:Ljava/lang/String;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/d/b$a;->clz:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/freshchat/consumer/sdk/d/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/freshchat/consumer/sdk/d/b$a;-><init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b$a;->clz:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/d/b$a;Le/m/e/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/d/b$a;->setDelegate(Le/m/e/b0;)V

    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b$a;->fieldName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b$a;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b$a;->nk:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/freshchat/consumer/sdk/d/b$a;)Le/m/e/b0;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b$a;->nl:Le/m/e/b0;

    return-object p0
.end method

.method private setDelegate(Le/m/e/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/b0<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b$a;->nl:Le/m/e/b0;

    return-void
.end method
