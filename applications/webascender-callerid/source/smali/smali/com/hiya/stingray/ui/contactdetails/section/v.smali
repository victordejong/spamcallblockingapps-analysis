.class public Lcom/hiya/stingray/ui/contactdetails/section/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/section/u;

.field private b:Lcom/hiya/stingray/ui/contactdetails/section/m;

.field private c:Lcom/hiya/stingray/ui/contactdetails/section/w;

.field private d:Lcom/hiya/stingray/ui/contactdetails/section/t;

.field private e:Lcom/hiya/stingray/ui/contactdetails/section/o;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/ui/contactdetails/section/w;Lcom/hiya/stingray/ui/contactdetails/section/t;Lcom/hiya/stingray/ui/contactdetails/section/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->a:Lcom/hiya/stingray/ui/contactdetails/section/u;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->b:Lcom/hiya/stingray/ui/contactdetails/section/m;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->c:Lcom/hiya/stingray/ui/contactdetails/section/w;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->d:Lcom/hiya/stingray/ui/contactdetails/section/t;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->e:Lcom/hiya/stingray/ui/contactdetails/section/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/ui/contactdetails/e0;Landroid/app/Activity;)Lcom/hiya/stingray/ui/contactdetails/section/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/section/v$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->e:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/o;->h(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->e:Lcom/hiya/stingray/ui/contactdetails/section/o;

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported DetailSection type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->d:Lcom/hiya/stingray/ui/contactdetails/section/t;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->c:Lcom/hiya/stingray/ui/contactdetails/section/w;

    return-object p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->a:Lcom/hiya/stingray/ui/contactdetails/section/u;

    return-object p1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->b:Lcom/hiya/stingray/ui/contactdetails/section/m;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->o(Landroid/app/Activity;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/v;->b:Lcom/hiya/stingray/ui/contactdetails/section/m;

    return-object p1
.end method
