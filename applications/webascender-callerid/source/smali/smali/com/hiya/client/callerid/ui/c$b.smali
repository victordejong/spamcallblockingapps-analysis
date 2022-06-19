.class public final Lcom/hiya/client/callerid/ui/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/hiya/client/callerid/ui/c$a;

.field static final synthetic b:Lcom/hiya/client/callerid/ui/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/c$b;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/c$b;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/c$b;->b:Lcom/hiya/client/callerid/ui/c$b;

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/c$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/c$a;-><init>(ZZZZZ)V

    sput-object v0, Lcom/hiya/client/callerid/ui/c$b;->a:Lcom/hiya/client/callerid/ui/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/client/callerid/ui/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/c$b;->a:Lcom/hiya/client/callerid/ui/c$a;

    return-object v0
.end method
