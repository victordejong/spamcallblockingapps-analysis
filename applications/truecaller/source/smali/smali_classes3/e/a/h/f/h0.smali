.class public final Le/a/h/f/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/g0;


# instance fields
.field public final a:Lcom/truecaller/calling/contacts_list/ContactsHolder;

.field public final b:Le/a/h/f/k0;

.field public final c:Le/a/d/c0/s1;

.field public final d:Z

.field public final e:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/k0;Le/a/d/c0/s1;ZLe/a/b0/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder;",
            "Le/a/h/f/k0;",
            "Le/a/d/c0/s1;",
            "Z",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactsHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/h0;->a:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    iput-object p2, p0, Le/a/h/f/h0;->b:Le/a/h/f/k0;

    iput-object p3, p0, Le/a/h/f/h0;->c:Le/a/d/c0/s1;

    iput-boolean p4, p0, Le/a/h/f/h0;->d:Z

    iput-object p5, p0, Le/a/h/f/h0;->e:Le/a/b0/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)Le/a/h/f/i;
    .locals 7

    const-string v0, "phonebookFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h/f/l;

    .line 2
    new-instance v2, Le/a/h/f/h0$a;

    invoke-direct {v2, p0, p2, p1}, Le/a/h/f/h0$a;-><init>(Le/a/h/f/h0;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V

    .line 3
    iget-object v3, p0, Le/a/h/f/h0;->b:Le/a/h/f/k0;

    .line 4
    iget-object v4, p0, Le/a/h/f/h0;->c:Le/a/d/c0/s1;

    .line 5
    iget-boolean v5, p0, Le/a/h/f/h0;->d:Z

    .line 6
    iget-object v6, p0, Le/a/h/f/h0;->e:Le/a/b0/a/b/b;

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Le/a/h/f/l;-><init>(Le/a/h/f/h;Le/a/h/f/k0;Le/a/d/c0/s1;ZLe/a/b0/a/b/b;)V

    return-object v0
.end method
