.class public final Le/a/a/c/n/c;
.super Le/a/a/c/n/h;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n/i;


# direct methods
.method public constructor <init>(Le/a/a/c/n/j;Le/a/a/k/a/a/q;Le/a/o5/f0;Le/a/o5/b0;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/a/c/n/h;-><init>(Le/a/a/c/n/j;Le/a/a/k/a/a/q;Le/a/o5/f0;Le/a/o5/b0;Le/a/p5/c0;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;->DELIVERED:Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;

    return-object v0
.end method
