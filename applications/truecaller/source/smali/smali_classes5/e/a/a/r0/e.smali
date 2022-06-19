.class public final synthetic Le/a/a/r0/e;
.super Ls1/z/c/w;
.source "SourceFile"


# static fields
.field public static final h:Ls1/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/r0/e;

    invoke-direct {v0}, Le/a/a/r0/e;-><init>()V

    sput-object v0, Le/a/a/r0/e;->h:Ls1/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "normalizedAddress"

    const-string v2, "getNormalizedAddress()Ljava/lang/String;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ls1/z/c/w;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 1
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    return-object p1
.end method
