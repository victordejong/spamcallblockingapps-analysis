.class public Lcom/hiya/stingray/notification/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/notification/c0/e;

.field private final b:Lcom/hiya/stingray/notification/c0/g;

.field private final c:Lcom/hiya/stingray/notification/c0/j;

.field private final d:Lcom/hiya/stingray/notification/c0/k;

.field private final e:Lcom/hiya/stingray/notification/c0/l;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/notification/c0/e;Lcom/hiya/stingray/notification/c0/g;Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/notification/c0/k;Lcom/hiya/stingray/notification/c0/l;)V
    .locals 1

    const-string v0, "blockedCallNotifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstTimeIdentifiedCallNotifier"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postCallNotifier"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectExpireNotifier"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionExpireNotifier"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/y;->a:Lcom/hiya/stingray/notification/c0/e;

    iput-object p2, p0, Lcom/hiya/stingray/notification/y;->b:Lcom/hiya/stingray/notification/c0/g;

    iput-object p3, p0, Lcom/hiya/stingray/notification/y;->c:Lcom/hiya/stingray/notification/c0/j;

    iput-object p4, p0, Lcom/hiya/stingray/notification/y;->d:Lcom/hiya/stingray/notification/c0/k;

    iput-object p5, p0, Lcom/hiya/stingray/notification/y;->e:Lcom/hiya/stingray/notification/c0/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/notification/p;)Lcom/hiya/stingray/notification/c0/f;
    .locals 1

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/x;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/notification/y;->c:Lcom/hiya/stingray/notification/c0/j;

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/notification/y;->b:Lcom/hiya/stingray/notification/c0/g;

    goto :goto_1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/notification/y;->a:Lcom/hiya/stingray/notification/c0/e;

    :goto_1
    return-object p1
.end method

.method public final b(Lcom/hiya/stingray/notification/v;)Lcom/hiya/stingray/notification/c0/h;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/x;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/notification/y;->e:Lcom/hiya/stingray/notification/c0/l;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/notification/y;->d:Lcom/hiya/stingray/notification/c0/k;

    :goto_0
    return-object p1
.end method
