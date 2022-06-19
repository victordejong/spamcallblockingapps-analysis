.class final Lcom/android/billingclient/api/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/android/billingclient/api/g;

.field static final b:Lcom/android/billingclient/api/g;

.field static final c:Lcom/android/billingclient/api/g;

.field static final d:Lcom/android/billingclient/api/g;

.field static final e:Lcom/android/billingclient/api/g;

.field static final f:Lcom/android/billingclient/api/g;

.field static final g:Lcom/android/billingclient/api/g;

.field static final h:Lcom/android/billingclient/api/g;

.field static final i:Lcom/android/billingclient/api/g;

.field static final j:Lcom/android/billingclient/api/g;

.field static final k:Lcom/android/billingclient/api/g;

.field static final l:Lcom/android/billingclient/api/g;

.field static final m:Lcom/android/billingclient/api/g;

.field static final n:Lcom/android/billingclient/api/g;

.field static final o:Lcom/android/billingclient/api/g;

.field static final p:Lcom/android/billingclient/api/g;

.field static final q:Lcom/android/billingclient/api/g;

.field static final r:Lcom/android/billingclient/api/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 2
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->a:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->b:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v2, "Billing service unavailable on device."

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v2, 0x5

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client is already in the process of connecting to billing service."

    .line 11
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 12
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->d:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v1, "Play Store version installed does not support cross selling products."

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 15
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v1, "The list of SKUs can\'t be empty."

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 18
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->e:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v1, "SKU type can\'t be empty."

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 21
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->f:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v1, -0x2

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client does not support extra params."

    .line 23
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->g:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client does not support the feature."

    .line 26
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->h:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client does not support get purchase history."

    .line 29
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 30
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->i:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Invalid purchase token."

    .line 32
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 33
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->j:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x6

    .line 34
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "An internal error occurred."

    .line 35
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 36
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->k:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x4

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Item is unavailable for purchase."

    .line 38
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 39
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "SKU can\'t be null."

    .line 41
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 42
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "SKU type can\'t be null."

    .line 44
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 45
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->l:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, -0x1

    .line 47
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Service connection is disconnected."

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 49
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->m:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, -0x3

    .line 50
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Timeout communicating with service."

    .line 51
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 52
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->n:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client doesn\'t support subscriptions."

    .line 54
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 55
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->o:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Client doesn\'t support subscriptions update."

    .line 57
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 58
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->p:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v1, "Client doesn\'t support multi-item purchases."

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 61
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->q:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v1, "Unknown feature"

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 64
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/z;->r:Lcom/android/billingclient/api/g;

    return-void
.end method
