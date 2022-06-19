.class public final Le/a/h/t0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l0/c;

.field public final b:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Le/a/l0/c;Lcom/truecaller/settings/CallingSettings;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callHistoryManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/t0/a;->a:Le/a/l0/c;

    iput-object p2, p0, Le/a/h/t0/a;->b:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method
