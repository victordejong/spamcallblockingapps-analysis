.class public final Le/a/h/f/a0$b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/a0$b;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/h/f/a0$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/h/f/a0$b$b;

    invoke-direct {v0}, Le/a/h/f/a0$b$b;-><init>()V

    sput-object v0, Le/a/h/f/a0$b$b;->b:Le/a/h/f/a0$b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->b:Le/a/k3/l/b;

    .line 4
    iget-object v1, v0, Le/a/k3/l/b;->a:Ljava/lang/String;

    iget-object v0, v0, Le/a/k3/l/b;->b:Ljava/lang/String;

    .line 5
    new-instance v2, Le/a/k3/l/b;

    const-string v3, "\u2605"

    invoke-direct {v2, v1, v0, v3}, Le/a/k3/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    iget-boolean p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->c:Z

    const-string v1, "contact"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sortingData"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    invoke-direct {v1, v0, v2, p1}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;-><init>(Lcom/truecaller/data/entity/Contact;Le/a/k3/l/b;Z)V

    return-object v1
.end method
