.class public Le/a/h0/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/w/a$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/h0/w/a$b;Le/a/h0/w/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Le/a/h0/w/a$b;->a:J

    .line 3
    iput-wide v0, p0, Le/a/h0/w/a;->a:J

    .line 4
    iget p2, p1, Le/a/h0/w/a$b;->b:I

    .line 5
    iput p2, p0, Le/a/h0/w/a;->b:I

    .line 6
    iget p2, p1, Le/a/h0/w/a$b;->c:I

    .line 7
    iput p2, p0, Le/a/h0/w/a;->c:I

    .line 8
    iget-object p2, p1, Le/a/h0/w/a$b;->l:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 9
    iput-object p2, p0, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 10
    iget-object p2, p1, Le/a/h0/w/a$b;->d:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Le/a/h0/w/a;->d:Ljava/lang/String;

    .line 12
    iget-object p2, p1, Le/a/h0/w/a$b;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 13
    :cond_0
    iput-object p2, p0, Le/a/h0/w/a;->e:Ljava/lang/String;

    .line 14
    sget-object p2, Lcom/truecaller/blocking/FiltersContract$a;->a:Ljava/util/List;

    .line 15
    iget-object v0, p1, Le/a/h0/w/a$b;->f:Ljava/lang/String;

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    iget-object p2, p1, Le/a/h0/w/a$b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p2, "OTHER"

    .line 18
    :goto_0
    iput-object p2, p0, Le/a/h0/w/a;->f:Ljava/lang/String;

    .line 19
    iget-object p2, p1, Le/a/h0/w/a$b;->i:Ljava/lang/Long;

    .line 20
    iput-object p2, p0, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 21
    iget-object p1, p1, Le/a/h0/w/a$b;->j:Ljava/lang/Integer;

    .line 22
    iput-object p1, p0, Le/a/h0/w/a;->i:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v1, "COUNTRY_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
