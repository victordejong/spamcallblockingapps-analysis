.class public Le/a/h0/q$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/h0/r;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;Le/a/h0/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/h0/q$b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/h0/q$b;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/a/h0/q$b;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Le/a/h0/q$b;->e:Ljava/lang/String;

    .line 6
    iput-boolean p6, p0, Le/a/h0/q$b;->f:Z

    .line 7
    iput-object p7, p0, Le/a/h0/q$b;->g:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 8
    iput-object p8, p0, Le/a/h0/q$b;->h:Ljava/lang/Long;

    .line 9
    iput-object p9, p0, Le/a/h0/q$b;->i:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/h0/r;

    .line 2
    iget-object v1, p0, Le/a/h0/q$b;->b:Ljava/lang/String;

    iget-object v2, p0, Le/a/h0/q$b;->c:Ljava/lang/String;

    iget-object v3, p0, Le/a/h0/q$b;->d:Ljava/lang/String;

    iget-object v4, p0, Le/a/h0/q$b;->e:Ljava/lang/String;

    iget-boolean v5, p0, Le/a/h0/q$b;->f:Z

    iget-object v6, p0, Le/a/h0/q$b;->g:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v7, p0, Le/a/h0/q$b;->h:Ljava/lang/Long;

    iget-object v8, p0, Le/a/h0/q$b;->i:Ljava/lang/Integer;

    invoke-interface/range {v0 .. v8}, Le/a/h0/r;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".blacklistAddress("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/q$b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/h0/q$b;->c:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v4, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/h0/q$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/h0/q$b;->e:Ljava/lang/String;

    invoke-static {v1, v4, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/h0/q$b;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h0/q$b;->g:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    invoke-static {v1, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h0/q$b;->h:Ljava/lang/Long;

    invoke-static {v1, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h0/q$b;->i:Ljava/lang/Integer;

    invoke-static {v1, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
