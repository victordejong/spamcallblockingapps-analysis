.class public Le/a/o5/d2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/d2/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Le/a/o5/d2/a;
    .locals 10

    const-string v0, "selected_location"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz p1, :cond_2

    .line 2
    iget-object v1, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->d:Ljava/lang/Double;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 5
    :goto_0
    iget-object v0, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->e:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :cond_1
    move-wide v6, v2

    .line 7
    iget-object p1, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->c:Ljava/lang/String;

    .line 8
    new-instance v9, Le/a/o5/d2/a;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Le/a/o5/d2/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;DDLjava/lang/CharSequence;Le/a/o5/d2/a$a;)V

    return-object v9

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
