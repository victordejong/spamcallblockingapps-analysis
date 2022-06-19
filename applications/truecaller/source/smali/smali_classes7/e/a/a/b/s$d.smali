.class public final Le/a/a/b/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;->Yk(Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/s;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/s$d;->a:Le/a/a/b/s;

    iput-object p2, p0, Le/a/a/b/s$d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/b/s$d;->c:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 2
    iget-object v0, p0, Le/a/a/b/s$d;->a:Le/a/a/b/s;

    iget-object v1, p0, Le/a/a/b/s$d;->b:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/b/s$d;->c:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    sget-object v3, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 5
    :goto_0
    iget-object v0, v0, Le/a/a/b/s;->U:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/n;

    invoke-interface {v0, p1, v1, v2}, Le/a/g5/n;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    :cond_1
    return-void
.end method
