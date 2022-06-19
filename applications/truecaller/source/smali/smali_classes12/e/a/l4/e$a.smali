.class public final Le/a/l4/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/truecaller/api/services/presence/v1/models/Availability;

.field public b:Lcom/truecaller/api/services/presence/v1/models/Flash;

.field public c:Lw3/b/a/b;

.field public d:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

.field public e:Lcom/truecaller/api/services/presence/v1/models/Voip;

.field public f:Lcom/truecaller/api/services/presence/v1/models/Payment;

.field public g:Lcom/truecaller/api/services/presence/v1/models/Premium;

.field public h:Lcom/truecaller/api/services/presence/v1/models/CallContext;

.field public i:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

.field public j:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l4/e$a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l4/e;
    .locals 2

    .line 1
    new-instance v0, Le/a/l4/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l4/e;-><init>(Le/a/l4/e$a;Ls1/z/c/f;)V

    return-object v0
.end method
