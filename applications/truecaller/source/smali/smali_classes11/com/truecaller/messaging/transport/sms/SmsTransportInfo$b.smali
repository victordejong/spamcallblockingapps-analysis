.class public Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:J

.field public e:Landroid/net/Uri;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 5
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a:J

    .line 6
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->b:J

    .line 7
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 8
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->d:J

    .line 9
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 10
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->f:I

    .line 11
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->g:I

    .line 12
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 13
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->i:I

    .line 14
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->j:Z

    .line 15
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->k:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;-><init>(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V

    return-object v0
.end method
