.class public Lzendesk/support/CustomField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/Long;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/CustomField;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lzendesk/support/CustomField;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CustomField;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/support/CustomField;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "CustomField"

    const-string v3, "Custom field value is not a string"

    .line 4
    invoke-static {v2, v3, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
