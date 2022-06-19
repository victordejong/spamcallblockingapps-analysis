.class public final Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Z

.field public d:Z

.field public e:Landroid/telecom/PhoneAccountHandle;

.field public f:Z

.field public g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V
    .locals 2

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b:Ljava/lang/Integer;

    .line 8
    iget-boolean v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->e:Z

    .line 9
    iput-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->c:Z

    .line 10
    iget-boolean v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->f:Z

    .line 11
    iput-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->d:Z

    .line 12
    iget-object v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->g:Landroid/telecom/PhoneAccountHandle;

    .line 13
    iput-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->e:Landroid/telecom/PhoneAccountHandle;

    .line 14
    iget-boolean v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->h:Z

    .line 15
    iput-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->f:Z

    .line 16
    iget-object p1, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 17
    invoke-virtual {p0, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->i:Ljava/lang/String;

    .line 19
    sget-object p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    return-void
.end method


# virtual methods
.method public final a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;
    .locals 11

    .line 1
    new-instance v10, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    .line 2
    iget-object v1, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->h:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->i:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b:Ljava/lang/Integer;

    .line 6
    iget-boolean v5, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->c:Z

    .line 7
    iget-boolean v6, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->d:Z

    .line 8
    iget-object v7, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->e:Landroid/telecom/PhoneAccountHandle;

    .line 9
    iget-boolean v8, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->f:Z

    .line 10
    iget-object v9, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    move-object v0, v10

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    return-object v10
.end method

.method public final b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;
    .locals 1

    const-string v0, "callContextOption"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    return-object p0
.end method
